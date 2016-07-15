defmodule ElixirOfOchoku.BucketTest do
  use ExUnit.Case, async: true

  test "storing a value by key" do
    {:ok, bucket} = ElixirOfOchoku.Bucket.start_link
    assert ElixirOfOchoku.Bucket.get(bucket, "milk") == nil

    ElixirOfOchoku.Bucket.put(bucket, "milk", 3)
    assert ElixirOfOchoku.Bucket.get(bucket, "milk") == 3
  end

  test "deleting a key by value" do
    {:ok, bucket} = ElixirOfOchoku.Bucket.start_link
    assert ElixirOfOchoku.Bucket.get(bucket, "milk") == nil
    ElixirOfOchoku.Bucket.put(bucket, "milk", 3)
    assert ElixirOfOchoku.Bucket.get(bucket, "milk") == 3
    ElixirOfOchoku.Bucket.delete(bucket, "milk")
    assert ElixirOfOchoku.Bucket.get(bucket, "milk") == nil
  end

end
