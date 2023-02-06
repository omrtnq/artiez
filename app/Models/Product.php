<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

/**
 * @property integer $product_id
 * @property integer $artist_id
 * @property integer $base_id
 * @property integer $medium_id
 * @property string $product_name
 * @property string $description
 * @property float $length
 * @property float $width
 * @property float $height
 * @property string $date_created
 * @property string $art_style
 * @property string $coa
 * @property boolean $frame
 * @property string $product_preview
 * @property float $price
 * @property boolean $is_sculpture
 * @property boolean $sold
 * @property OrderedItemTable[] $orderedItemTables
 * @property BaseTable $baseTable
 * @property ArtistTable $artistTable
 * @property MediumTable $mediumTable
 */
class Product extends Model
{
    use HasFactory;
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'product_table';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'product_id';

    /**
     * @var array
     */
    protected $fillable = ['artist_id', 'base_id', 'medium_id', 'product_name', 'description', 'width', 'height', 'date_created', 'art_style', 'coa', 'product_preview', 'price', 'sold'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function orderedItemTables()
    {
        return $this->hasMany(OrderedItem::class, 'product_id', 'product_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function baseTable()
    {
        return $this->belongsTo(Base::class, 'base_id', 'base_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function artistTable()
    {
        return $this->belongsTo(Artist::class, 'artist_id', 'artist_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function mediumTable()
    {
        return $this->belongsTo(Medium::class, 'medium_id', 'medium_id');
    }
}
