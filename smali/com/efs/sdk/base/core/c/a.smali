.class public final Lcom/efs/sdk/base/core/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/core/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/core/d/b;Z)Lcom/efs/sdk/base/http/HttpResponse;
    .locals 7

    invoke-static {}, Lcom/efs/sdk/base/core/a/c;->a()Lcom/efs/sdk/base/core/a/c;

    move-result-object p0

    iget-object v0, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget-object v1, v0, Lcom/efs/sdk/base/core/d/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/efs/sdk/base/core/a/c;->d:Ljava/lang/String;

    iget v1, v0, Lcom/efs/sdk/base/core/d/a;->e:I

    iput v1, p0, Lcom/efs/sdk/base/core/a/c;->e:I

    iget-byte v1, v0, Lcom/efs/sdk/base/core/d/a;->b:B

    iput-byte v1, p0, Lcom/efs/sdk/base/core/a/c;->g:B

    iget-object v0, v0, Lcom/efs/sdk/base/core/d/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/efs/sdk/base/core/a/c;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/efs/sdk/base/core/d/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/efs/sdk/base/core/a/c;->m:J

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/core/config/a/c;->a(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/efs/sdk/base/core/d/b;->a:Lcom/efs/sdk/base/core/d/a;

    iget v1, v1, Lcom/efs/sdk/base/core/d/a;->c:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->a()Lcom/efs/sdk/base/core/a/a;

    move-result-object v1

    iget-object v3, p1, Lcom/efs/sdk/base/core/d/b;->c:[B

    iget-object v4, p1, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-boolean v4, v4, Lcom/efs/sdk/base/core/d/c;->b:Z

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/a/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p0}, Lcom/efs/sdk/base/core/a/a;->a(Ljava/lang/String;Lcom/efs/sdk/base/core/a/c;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v1, Lcom/efs/sdk/base/core/a/a;->a:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "upload buffer file, url is "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "efs.px.api"

    invoke-static {v6, v1}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v6, "wpk-header"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/efs/sdk/base/core/util/a/d;

    invoke-direct {v5, v0}, Lcom/efs/sdk/base/core/util/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/util/Map;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object v0

    iget-object v1, v0, Lcom/efs/sdk/base/core/util/a/d;->a:Lcom/efs/sdk/base/core/util/a/b;

    iput-object v3, v1, Lcom/efs/sdk/base/core/util/a/b;->c:[B

    iput-boolean v2, v1, Lcom/efs/sdk/base/core/util/a/b;->g:Z

    const-string v1, "type"

    iget-object v2, p0, Lcom/efs/sdk/base/core/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/efs/sdk/base/core/a/c;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "size"

    invoke-virtual {v0, v1, p0}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object p0

    const-string v0, "flow_limit"

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object p0

    invoke-static {}, Lcom/efs/sdk/base/core/a/d;->a()Lcom/efs/sdk/base/core/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/efs/sdk/base/core/util/a/d;->a(Lcom/efs/sdk/base/http/AbsHttpListener;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/util/a/d;->a()Lcom/efs/sdk/base/core/util/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/util/a/c;->b()Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->a()Lcom/efs/sdk/base/core/a/a;

    move-result-object v1

    iget-object v2, p1, Lcom/efs/sdk/base/core/d/b;->d:Ljava/io/File;

    iget-object v3, p1, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    iget-boolean v3, v3, Lcom/efs/sdk/base/core/d/c;->b:Z

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/efs/sdk/base/core/a/a;->a(Ljava/lang/String;Lcom/efs/sdk/base/core/a/c;Ljava/io/File;Z)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {p0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    :goto_0
    iget-boolean v0, p0, Lcom/efs/sdk/base/core/d/d;->succ:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/efs/sdk/base/core/d/b;->d:Ljava/io/File;

    invoke-static {p1}, Lcom/efs/sdk/base/core/util/b;->b(Ljava/io/File;)V

    :cond_3
    return-object p0
.end method
