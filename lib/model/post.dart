class Post {
  final String title;
  final String author;
  final String imageUlr;
  final String desc;
  bool selected = false;

  Post({
    this.title,
    this.author,
    this.imageUlr,
    this.desc,
  });
}

final List<Post> posts = [
  Post(
    title: '测试1',
    author: 'vix',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试2',
    author: 'vix2 ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试3',
    author: 'vix ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试4',
    author: 'vix ，hello',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试5',
    author: 'vix5 ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试6',
    author: 'vix,hello',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试7',
    author: 'vix2 ，hello a',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试8',
    author: 'vix3 ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试9',
    author: 'vix4 ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试10',
    author: 'vix5 ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试11',
    author: 'vix hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试12',
    author: 'vix2 ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试13',
    author: 'vix3 ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试14',
    author: 'vix4 ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
  Post(
    title: '测试15',
    author: 'vix5 ，hi',
    imageUlr:
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797',
    desc:
        '少小边州惯放狂，骣骑蕃马射黄羊。如今年老无筋力，犹倚营门数雁行。家本清河住五城，须凭弓箭得功名。等闲飞鞚秋原上，独向寒云试射声。弓背霞明剑照霜，秋风走马出咸阳。未收天子河湟地，不拟回头望故乡。霜满中庭月满楼，金樽玉柱对清秋。当年称意须行乐，不到天明不肯休。',
  ),
];
