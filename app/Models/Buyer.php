<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Contracts\Auth\Authenticatable as AuthAuthenticatable;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Support\Facades\Hash;


/**
 * @property integer $buyer_id
 * @property string $email
 * @property integer $address_id
 * @property string $last_name
 * @property string $first_name
 * @property string $contact_number
 * @property AddressTable $addressTable
 * @property SignInCredetial $signInCredetial
 * @property TransactionTable[] $transactionTables
 */
class Buyer extends  Authenticatable
{
    use HasFactory;
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'buyer_table';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'buyer_id';

    /**
     * @var array
     */
    protected $fillable = [
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
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function transactionTables()
    {
        return $this->hasMany(Transaction::class, 'buyer_id', 'buyer_id');
    }

    
}
