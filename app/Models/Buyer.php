<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

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
class Buyer extends Model
{
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
    protected $fillable = ['email', 'address_id', 'last_name', 'first_name', 'contact_number'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function addressTable()
    {
        return $this->belongsTo('App\Models\AddressTable', 'address_id', 'address_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function signInCredetial()
    {
        return $this->belongsTo('App\Models\SignInCredetial', 'email', 'email');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function transactionTables()
    {
        return $this->hasMany('App\Models\TransactionTable', 'buyer_id', 'buyer_id');
    }
}
