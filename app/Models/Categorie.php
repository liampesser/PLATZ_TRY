<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorie extends Model
{
    use HasFactory;

    /**
 * GETTER des posts de la catégorie.
 * @return [type] [description]
 */
public function posts() {
  return $this->hasMany('App\Models\Post');
}

}
