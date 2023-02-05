<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $transaction_id
 * @property integer $buyer_id
 * @property integer $order_item_id
 * @property integer $payment_method_id
 * @property string $date_of_transaction
 * @property float $total_price
 * @property PaymentMethodTable $paymentMethodTable
 * @property OrderedItemTable $orderedItemTable
 * @property BuyerTable $buyerTable
 */
class Transaction extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'transaction_table';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'transaction_id';

    /**
     * @var array
     */
    protected $fillable = ['buyer_id', 'order_item_id', 'payment_method_id', 'date_of_transaction', 'total_price'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function paymentMethodTable()
    {
        return $this->belongsTo('App\Models\PaymentMethodTable', 'payment_method_id', 'payment_method_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function orderedItemTable()
    {
        return $this->belongsTo('App\Models\OrderedItemTable', 'order_item_id', 'ordered_item_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function buyerTable()
    {
        return $this->belongsTo('App\Models\BuyerTable', 'buyer_id', 'buyer_id');
    }
}
