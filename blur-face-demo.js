const sharp = require('sharp');
const path = require('path');

const inputPath = path.join(__dirname, 'שיפוץ הבניין', 'IMG-20250916-WA0527.jpg');
const outputPath = path.join(__dirname, 'demo-blurred-face.jpg');

async function blurFace() {
  const metadata = await sharp(inputPath).metadata();
  console.log(`Image size: ${metadata.width}x${metadata.height}`);

  // Face region for WA0527 - young man with glasses in hallway
  const faceRegion = {
    left: 370,
    top: 60,
    width: 330,
    height: 370
  };

  console.log('Face region:', faceRegion);

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
