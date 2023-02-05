<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $payment_method_id
 * @property string $payment_method
 * @property TransactionTable[] $transactionTables
 */
class PaymentMethod extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'payment_method_table';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'payment_method_id';

    /**
     * @var array
     */
    protected $fillable = ['payment_method'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function transactionTables()
    {
        return $this->hasMany('App\Models\TransactionTable', 'payment_method_id', 'payment_method_id');
    }
}
