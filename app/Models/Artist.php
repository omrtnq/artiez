<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $artist_id
 * @property string $email
 * @property integer $address_id
 * @property string $last_name
 * @property string $first_name
 * @property string $contact_number
 * @property boolean $open_for_commission
 * @property SignInCredetial $signInCredetial
 * @property AddressTable $addressTable
 * @property ProductTable[] $productTables
 */
class Artist extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'artist_table';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'artist_id';

    /**
     * @var array
     */
    protected $fillable = ['email', 'address_id', 'last_name', 'first_name', 'contact_number', 'open_for_commission'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function signInCredetial()
    {
        return $this->belongsTo('App\Models\SignInCredetial', 'email', 'email');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function addressTable()
    {
        return $this->belongsTo('App\Models\AddressTable', 'address_id', 'address_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function productTables()
    {
        return $this->hasMany('App\Models\ProductTable', 'artist_id', 'artist_id');
    }
}
