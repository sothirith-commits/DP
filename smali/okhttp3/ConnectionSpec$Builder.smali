.class public final Lokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;


# instance fields
.field public cipherSuites:Ljava/lang/Object;

.field public supportsTlsExtensions:Z

.field public tls:Z

.field public tlsVersions:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method


# virtual methods
.method public build()Lokhttp3/ConnectionSpec;
    .locals 4

    new-instance v0, Lokhttp3/ConnectionSpec;

    iget-boolean v1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    iget-object v2, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    iget-boolean p0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lokhttp3/ConnectionSpec;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)V
    .locals 2

    const-string v0, "cipherSuites"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one cipher suite is required"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no cipher suites for cleartext connections"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs cipherSuites([Lokhttp3/CipherSuite;)V
    .locals 5

    const-string v0, "cipherSuites"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    iget-object v4, v4, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no cipher suites for cleartext connections"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCoverLoaded(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cover"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onCoverLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 8

    sget-object v0, Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;

    new-instance v2, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;

    iget-object v1, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;-><init>(Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/deepalhome/launcher/music/Music;

    const-string v0, "music"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object v3

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "https://music.163.com/api/search/get/?s="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&limit=10&type=1&offset=0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lokhttp3/internal/connection/RealCall;

    const/4 v5, 0x0

    invoke-direct {v7, v1, v0, v5}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources;

    iget-boolean v5, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    iget-boolean v6, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/ActiveResources;-><init>(Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Lcom/deepalhome/launcher/music/Music;ZZ)V

    invoke-virtual {v7, v0}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public onFavLoaded(Z)V
    .locals 0

    iget-object p0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onFavLoaded(Z)V

    return-void
.end method

.method public onLyricLoaded(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lyric"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public supportsTlsExtensions()V
    .locals 1

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs tlsVersions([Ljava/lang/String;)V
    .locals 2

    const-string v0, "tlsVersions"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one TLS version is required"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no TLS versions for cleartext connections"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs tlsVersions([Lokhttp3/TlsVersion;)V
    .locals 5

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no TLS versions for cleartext connections"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
