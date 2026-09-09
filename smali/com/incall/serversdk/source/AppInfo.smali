.class public Lcom/incall/serversdk/source/AppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public className:Ljava/lang/String;

.field public delay:Z

.field public keyCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public pause:Z

.field public startAction:Ljava/lang/String;

.field public startType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/incall/serversdk/source/AppInfo;->keyCodes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/source/AppInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/incall/serversdk/source/AppInfo;->keyCodes:Ljava/util/List;

    iput-boolean p4, p0, Lcom/incall/serversdk/source/AppInfo;->delay:Z

    iput-boolean p5, p0, Lcom/incall/serversdk/source/AppInfo;->pause:Z

    iput-object p2, p0, Lcom/incall/serversdk/source/AppInfo;->className:Ljava/lang/String;

    iput-object p6, p0, Lcom/incall/serversdk/source/AppInfo;->startType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/source/AppInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/incall/serversdk/source/AppInfo;->keyCodes:Ljava/util/List;

    iput-boolean p3, p0, Lcom/incall/serversdk/source/AppInfo;->delay:Z

    iput-boolean p4, p0, Lcom/incall/serversdk/source/AppInfo;->pause:Z

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/source/AppInfo;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyCodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/source/AppInfo;->keyCodes:Ljava/util/List;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/source/AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getStartAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/source/AppInfo;->startAction:Ljava/lang/String;

    return-object p0
.end method

.method public getStartType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/source/AppInfo;->startType:Ljava/lang/String;

    return-object p0
.end method

.method public isDelay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/incall/serversdk/source/AppInfo;->delay:Z

    return p0
.end method

.method public isPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/incall/serversdk/source/AppInfo;->pause:Z

    return p0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/source/AppInfo;->className:Ljava/lang/String;

    return-void
.end method

.method public setDelay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/incall/serversdk/source/AppInfo;->delay:Z

    return-void
.end method

.method public setKeyCodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/incall/serversdk/source/AppInfo;->keyCodes:Ljava/util/List;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/source/AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/incall/serversdk/source/AppInfo;->pause:Z

    return-void
.end method

.method public setStartAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/source/AppInfo;->startAction:Ljava/lang/String;

    return-void
.end method

.method public setStartType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/source/AppInfo;->startType:Ljava/lang/String;

    return-void
.end method
