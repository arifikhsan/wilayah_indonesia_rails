# REST API Wilayah Indonesia dengan GraphQL
<a href="https://www.producthunt.com/posts/wilayah-indonesia-graphql?utm_source=badge-featured&utm_medium=badge&utm_souce=badge-wilayah-indonesia-graphql" target="_blank"><img src="https://api.producthunt.com/widgets/embed-image/v1/featured.svg?post_id=277951&theme=light" alt="Wilayah Indonesia GraphQL - RESTFul API wilayah Indonesia dengan GraphQL | Product Hunt" style="width: 250px; height: 54px;" width="250" height="54" /></a>

Menampilkan daftar provinsi, kota, kecamatan dengan GraphQL untuk membuat form isian alamat. 🔥

> https://wilayah-indonesia.herokuapp.com/

Demo GraphiQL
> https://wilayah-indonesia.herokuapp.com/graphiql

Endpoint graphql
> https://wilayah-indonesia.herokuapp.com/graphql

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
