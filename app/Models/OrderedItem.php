<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property integer $ordered_item_id
 * @property integer $product_id
 * @property ProductTable $productTable
 * @property TransactionTable[] $transactionTables
 */
class OrderedItem extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'ordered_item_table';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'ordered_item_id';

    /**
     * @var array
     */
    protected $fillable = ['product_id'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function productTable()
    {
        return $this->belongsTo('App\Models\ProductTable', 'product_id', 'product_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function transactionTables()
    {
        return $this->hasMany('App\Models\TransactionTable', 'order_item_id', 'ordered_item_id');
    }
}
