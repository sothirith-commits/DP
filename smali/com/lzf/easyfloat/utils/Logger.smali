.class public final Lcom/lzf/easyfloat/utils/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/lzf/easyfloat/utils/Logger;

.field public static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lzf/easyfloat/utils/Logger;

    invoke-direct {v0}, Lcom/lzf/easyfloat/utils/Logger;-><init>()V

    sput-object v0, Lcom/lzf/easyfloat/utils/Logger;->INSTANCE:Lcom/lzf/easyfloat/utils/Logger;

    const-string v0, "EasyFloat--->"

    sput-object v0, Lcom/lzf/easyfloat/utils/Logger;->tag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
