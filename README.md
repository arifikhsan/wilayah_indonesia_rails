# REST API Wilayah Indonesia dengan GraphQL

> https://wilayah-indonesia.herokuapp.com/

## Cara Pakai

* Kunjungi https://wilayah-indonesia.herokuapp.com/graphiql

### Pilih Semua Provinsi

```gql
query {
  provinces {
    id
    name
  }
}
```

### Semua kota/kabupaten

```gql
query {
  regencies {
    id
    name
  }
}
```

### Semua kota/kabupaten berdasarkan id provinsi

```gql
query {
  regenciesByProvince(provinceId: 33) {
    id
    name
  }
}
```


### Semua kecamatan

```gql
query {
  districts {
    id
    name
  }
}
```

### Semua kecamatan berdasarkan id kota/kabupaten

```gql
query {
  districtsByRegency(regencyId: 3308) {
    id
    name
  }
}
```

## Sumber Data

https://github.com/edwardsamuel/Wilayah-Administratif-Indonesia
