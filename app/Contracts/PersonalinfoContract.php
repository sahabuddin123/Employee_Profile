<?php

namespace App\Contracts;

/**
 * Interface BrandContract
 * @package App\Contracts
 */
interface PersonalinfoContract
{
    /**
     * @param string $order
     * @param string $sort
     * @param array $columns
     * @return mixed
     */
    public function listPersonalinfo(string $order = 'id', string $sort = 'desc', array $columns = ['*']);

    /**
     * @param int $id
     * @return mixed
     */
    public function findPersonalinfoById(int $id);

    /**
     * @param array $params
     * @return mixed
     */
    public function createPersonalinfo(array $params);

    /**
     * @param array $params
     * @return mixed
     */
    public function updatePersonalinfo(array $params);

    /**
     * @param $id
     * @return bool
     */
    public function deletePersonalinfo($id);
}
