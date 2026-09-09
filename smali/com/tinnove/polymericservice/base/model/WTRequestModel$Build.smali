.class public final Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;

    invoke-direct {v0}, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;-><init>()V

    sput-object v0, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(IILjava/util/HashMap;)Lcom/tinnove/polymericservice/base/model/WTRequestModel;
    .locals 2

    const/4 v0, 0x0

    if-gez p0, :cond_0

    sget-object p0, Lcom/tinnove/polymericservice/base/log/TinnoveLog;->INSTANCE:Lcom/tinnove/polymericservice/base/log/TinnoveLog;

    const-string p1, "abilityCode is null"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/tinnove/polymericservice/base/log/TinnoveLog;->e([Ljava/lang/Object;)V

    return-object v0

    :cond_0
    if-gez p1, :cond_1

    sget-object p0, Lcom/tinnove/polymericservice/base/log/TinnoveLog;->INSTANCE:Lcom/tinnove/polymericservice/base/log/TinnoveLog;

    const-string p1, "methodCode is null"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/tinnove/polymericservice/base/log/TinnoveLog;->e([Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tinnove/polymericservice/base/model/WTRequestModel;-><init>(I)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/tinnove/polymericservice/base/model/WTRequestModel;->abilityCode:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/tinnove/polymericservice/base/model/WTRequestModel;->abilityMethodCode:Ljava/lang/Integer;

    iput-object p2, v0, Lcom/tinnove/polymericservice/base/model/WTRequestModel;->params:Ljava/util/Map;

    const/16 p0, 0x3e9

    iput p0, v0, Lcom/tinnove/polymericservice/base/model/WTRequestModel;->sdkVersionCode:I

    return-object v0
.end method
