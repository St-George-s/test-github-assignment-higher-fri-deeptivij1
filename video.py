import json
import base64

# Load the HAR file
with open("network_log.har", "r", encoding="utf-8") as file:
    har_data = json.load(file)

# Folder to save images
output_folder = "extracted_images"
import os
os.makedirs(output_folder, exist_ok=True)

# Find and save blob images
count = 1
for entry in har_data["log"]["entries"]:
    response = entry.get("response", {})
    content = response.get("content", {})
    
    # Look for images with content-type headers (like JPEG, PNG)
    mime_type = content.get("mimeType", "")
    if "image" in mime_type and content.get("text"):
        # Decode base64 content
        image_data = base64.b64decode(content["text"])
        ext = mime_type.split("/")[-1]  # File extension (e.g., jpeg, png)
        filename = os.path.join(output_folder, f"image_{count}.{ext}")
        
        # Save the file
        with open(filename, "wb") as img_file:
            img_file.write(image_data)
        print(f"Saved: {filename}")
        count += 1

print("Image extraction completed.")
