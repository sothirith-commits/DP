.class public final Lcom/tinnove/polymericservice/base/log/TinnoveLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/tinnove/polymericservice/base/log/TinnoveLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tinnove/polymericservice/base/log/TinnoveLog;

    invoke-direct {v0}, Lcom/tinnove/polymericservice/base/log/TinnoveLog;-><init>()V

    sput-object v0, Lcom/tinnove/polymericservice/base/log/TinnoveLog;->INSTANCE:Lcom/tinnove/polymericservice/base/log/TinnoveLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs e([Ljava/lang/Object;)V
    .locals 4

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "P-s1.0.0.i-WTRequestModel"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
