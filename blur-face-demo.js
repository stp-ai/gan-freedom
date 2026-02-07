const sharp = require('sharp');
const path = require('path');

const inputPath = path.join(__dirname, 'שיפוץ הבניין', 'IMG-20250916-WA0527.jpg');
const outputPath = path.join(__dirname, 'demo-blurred-face.jpg');

async function blurFace() {
  const metadata = await sharp(inputPath).metadata();
  console.log(`Image size: ${metadata.width}x${metadata.height}`);

  // Face region for WA0527 - young man with glasses in hallway
  // Image 1200x1600. Face center is roughly at x:540, y:200
  // Need to cover from forehead to chin, ear to ear
  const faceRegion = {
    left: 380,
    top: 80,
    width: 320,
    height: 300
  };

  console.log('Face region:', faceRegion);

  // Extract face region, blur heavily, composite back
  const blurredFace = await sharp(inputPath)
    .extract(faceRegion)
    .blur(25)
    .toBuffer();

  await sharp(inputPath)
    .composite([{
      input: blurredFace,
      left: faceRegion.left,
      top: faceRegion.top
    }])
    .jpeg({ quality: 90 })
    .toFile(outputPath);

  console.log(`Done! Saved to: ${outputPath}`);
}

blurFace().catch(console.error);
