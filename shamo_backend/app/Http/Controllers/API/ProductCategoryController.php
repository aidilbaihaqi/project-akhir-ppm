public function store(ProductGalleryRequest $request, Product $product)
{
    $files = $request->file('files');

    if ($request->hasFile('files')) {
        foreach ($files as $file) {
            // Simpan di storage/app/public/gallery
            $path = $file->store('gallery', 'public');

            ProductGallery::create([
                'products_id' => $product->id,
                'url' => $path, // simpan 'gallery/filename.jpg'
            ]);
        }
    }

    return redirect()->route('dashboard.product.gallery.index', $product->id);
}
