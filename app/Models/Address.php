<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $address_id
 * @property string $strees_address
 * @property string $district
 * @property string $barangay
 * @property string $city/municipality
 * @property string $province
 * @property string $postal_code
 * @property ArtistTable[] $artistTables
 * @property BuyerTable[] $buyerTables
 */
class Address extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'address_table';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'address_id';

    /**
     * @var array
     */
    protected $fillable = ['strees_address', 'district', 'barangay', 'city/municipality', 'province', 'postal_code'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function artistTables()
    {
        return $this->hasMany('App\Models\ArtistTable', 'address_id', 'address_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function buyerTables()
    {
        return $this->hasMany('App\Models\BuyerTable', 'address_id', 'address_id');
    }
}
