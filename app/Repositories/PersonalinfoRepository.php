<?php
namespace App\Repositories;

use App\Models\Personalinfo;
use App\Traits\UploadAble;
use Illuminate\Http\UploadedFile;
use App\Contracts\PersonalinfoContract;
use Illuminate\Database\QueryException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Doctrine\Instantiator\Exception\InvalidArgumentException;

/**
 * Class PersonalinfoRepository
 *
 * @package \App\Repositories
 */
class PersonalinfoRepository extends BaseRepository implements PersonalinfoContract
{
    use UploadAble;

    /**
     * PersonalinfoRepository constructor.
     * @param Personalinfo $model
     */
    public function __construct(Personalinfo $model)
    {
        parent::__construct($model);
        $this->model = $model;
    }

    /**
     * @param string $order
     * @param string $sort
     * @param array $columns
     * @return mixed
     */
    public function listPersonalinfo(string $order = 'id', string $sort = 'desc', array $columns = ['*'])
    {
        return $this->all($columns, $order, $sort);
    }

    /**
     * @param int $id
     * @return mixed
     * @throws ModelNotFoundException
     */
    public function findPersonalinfoById(int $id)
    {
        try {
            return $this->findOneOrFail($id);

        } catch (ModelNotFoundException $e) {

            throw new ModelNotFoundException($e);
        }

    }

    /**
     * @param array $params
     * @return Personalinfo|mixed
     */
    public function createPersonalinfo(array $params)
    {
        try {
            $collection = collect($params);

            $image = null;
            $signature= null;

            if ($collection->has('image') && ($params['image'] instanceof  UploadedFile)) {
                $image = $this->uploadOne($params['image'], 'Personalinfo');
            }
            if ($collection->has('signature') && ($params['signature'] instanceof  UploadedFile)) {
                $signature = $this->uploadOne($params['signature'], 'Signature');
            }
            $slug = microtime(true)*10000;
            $merge = $collection->merge(compact('image','slug','signature'));

            $brand = new Personalinfo($merge->all());

            $brand->save();

            return $brand;

        } catch (QueryException $exception) {
            throw new InvalidArgumentException($exception->getMessage());
        }
    }

    /**
     * @param array $params
     * @return mixed
     */
    // public function updatePersonalinfo(array $params)
    // {
    //     $brand = $this->findPersonalinfoById($params['id']);

    //     $collection = collect($params)->except('_token');
    //     $name = $params['name'];
    //     $merge = $collection->merge(compact('name'));
    //     $brand->update($merge->all());

    //     return $brand;
    // }
        /**
     * @param array $params
     * @return mixed
     */
    public function updatePersonalinfo(array $params)
    {
        $personal = $this->findPersonalinfoById($params['id']);

        $collection = collect($params)->except('_token');
        $image = null;
        $signature =null;
        if ($collection->has('image') && ($params['image'] instanceof  UploadedFile)) {

            if ($personal->image != null) {
                $this->deleteOne($personal->image);
            }

            $image = $this->uploadOne($params['image'], 'Personalinfo');
        }else{
            $image = null;
            $name = $params['name'];
        }
        if ($collection->has('signature') && ($params['signature'] instanceof  UploadedFile)) {

            if ($personal->signature != null) {
                $this->deleteOne($personal->signature);
            }

            $signature = $this->uploadOne($params['signature'], 'Signature');
        }else{
            $signature = null;
            $father_name = $params['father_name'];
        }
        if($image != null && $signature != null){
            $merge = $collection->merge(compact('image','signature'));
        }
        elseif($image != null && $signature == null){
            $merge = $collection->merge(compact('image','father_name'));
        }
        elseif($image == null && $signature != null){
            $merge = $collection->merge(compact('name','signature'));
        }
        else{
            $merge = $collection->merge(compact('name','father_name'));
        }

        $personal->update($merge->all());

        return $personal;
    }

    /**
     * @param $id
     * @return bool|mixed
     */
    public function deletePersonalinfo($id)
    {
        $brand = $this->findPersonalinfoById($id);

        if ($brand->logo != null) {
            $this->deleteOne($brand->logo);
        }

        $brand->delete();

        return $brand;
    }
}
