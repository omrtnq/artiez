<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
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
    use HasFactory;
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
    protected $fillable = 
    [
    'last_name',
     'first_name',
      'contact_number',
       'email',
        'pass',
         'street_address',
          'district',
           'barangay',
            'city',
             'province',
              'postal_code',
               'open_for_commission'
            ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function productTables()
    {
        return $this->hasMany(Product::class, 'artist_id', 'artist_id');
    }
}
