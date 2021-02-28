<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    /**
 * GETTER de la categorie à qui appartient ce post.
 * @return [type] [description]
 */
public function categorie(){
  return $this->belongsTo('App\Models\Categorie');
}

/**
* GETTER du author à qui appartient ce post.
* @return [type] [description]
*/
public function author(){
return $this->belongsTo('App\Models\Author');
}

/**
 * GETTER des comments du post.
 */
public function comments() {
    return $this->hasMany('App\Models\Comment');
}

}
