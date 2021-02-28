<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    /**
     * GETTER du user à qui appartient ce post.
     */
    public function post(){
        return $this->belongsTo('App\Models\Post');
    }

}
