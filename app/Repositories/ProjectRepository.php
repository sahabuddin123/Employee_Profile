<?php
namespace App\Repositories;

use App\Models\Project;
use App\Traits\UploadAble;
use Illuminate\Http\UploadedFile;
use App\Contracts\ProjectContract;
use Illuminate\Database\QueryException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Doctrine\Instantiator\Exception\InvalidArgumentException;

/**
 * Class ProjectRepository
 *
 * @package \App\Repositories
 */
class ProjectRepository extends BaseRepository implements ProjectContract
{
    use UploadAble;

    /**
     * ProjectRepository constructor.
     * @param Project $model
     */
    public function __construct(Project $model)
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
    public function listData(string $order = 'id', string $sort = 'desc', array $columns = ['*'])
    {
        return $this->all($columns, $order, $sort);
    }

    /**
     * @param int $id
     * @return mixed
     * @throws ModelNotFoundException
     */
    public function findDataById(int $id)
    {
        try {
            return $this->findOneOrFail($id);

        } catch (ModelNotFoundException $e) {

            throw new ModelNotFoundException($e);
        }

    }

    /**
     * @param array $params
     * @return Project|mixed
     */
    public function createData(array $params)
    {
        try {
            $collection = collect($params);
            //
            // $AuthordSignature= null;
            // if ($collection->has('AuthordSignature') && ($params['AuthordSignature'] instanceof  UploadedFile)) {
            //     $AuthordSignature = $this->uploadOne($params['AuthordSignature'], 'AuthordSignature');
            // }
            // $slug = microtime(true)*10000;
            // $merge = $collection->merge(compact('AuthordSignature','slug'));
            //
            $image = null;
            $AuthordSignature= null;

            if ($collection->has('image') && ($params['image'] instanceof  UploadedFile)) {
                $image = $this->uploadOne($params['image'], 'ProjectImage');
            }
            if ($collection->has('AuthordSignature') && ($params['AuthordSignature'] instanceof  UploadedFile)) {
                $AuthordSignature = $this->uploadOne($params['AuthordSignature'], 'AuthordSignature');
            }
            $slug = microtime(true)*10000;
            $merge = $collection->merge(compact('image','AuthordSignature','slug'));
            //
            $brand = new Project($merge->all());
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
    public function updateData(array $params)
    {
        $personal = $this->findDataById($params['id']);

        $collection = collect($params)->except('_token');
        $AuthordSignature =null;
        $image = null;
        if ($collection->has('image') && ($params['image'] instanceof  UploadedFile)) {

            if ($personal->image != null) {
                $this->deleteOne($personal->image);
            }
            $image = $this->uploadOne($params['image'], 'ProjectImage');
        }
        else{
            $image = null;
            $pctg = $params['pctg'];
        }
        if ($collection->has('AuthordSignature') && ($params['AuthordSignature'] instanceof  UploadedFile)) {

            if ($personal->AuthordSignature != null) {
                $this->deleteOne($personal->AuthordSignature);
            }
            $AuthordSignature = $this->uploadOne($params['AuthordSignature'], 'AuthordSignature');
        }
        else{
            $AuthordSignature = null;
            $ptitle = $params['ptitle'];
        }
        if($image != null && $AuthordSignature != null){
            $merge = $collection->merge(compact('image','AuthordSignature'));
        }
        elseif($image != null && $AuthordSignature == null){
            $merge = $collection->merge(compact('image','pctg'));
        }
        elseif($image == null && $AuthordSignature != null){
            $merge = $collection->merge(compact('ptitle','AuthordSignature'));
        }
        else{
            $merge = $collection->merge(compact('pctg','ptitle'));
        }
        $personal->update($merge->all());

        return $personal;
    }

    /**
     * @param $id
     * @return bool|mixed
     */
    public function deleteData($id)
    {
        $brand = $this->findDataById($id);

        if ($brand->AuthordSignature != null) {
            $this->deleteOne($brand->AuthordSignature);
        }

        $brand->delete();

        return $brand;
    }
}
