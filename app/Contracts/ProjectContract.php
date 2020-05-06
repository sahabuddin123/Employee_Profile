<?php

namespace App\Contracts;

/**
 * Interface BrandContract
 * @package App\Contracts
 */
interface ProjectContract
{
    /**
     * @param string $order
     * @param string $sort
     * @param array $columns
     * @return mixed
     */
    public function listData(string $order = 'id', string $sort = 'desc', array $columns = ['*']);

    /**
     * @param int $id
     * @return mixed
     */
    public function findDataById(int $id);

    /**
     * @param array $params
     * @return mixed
     */
    public function createData(array $params);

    /**
     * @param array $params
     * @return mixed
     */
    public function updateData(array $params);

    /**
     * @param $id
     * @return bool
     */
    public function deleteData($id);
}
