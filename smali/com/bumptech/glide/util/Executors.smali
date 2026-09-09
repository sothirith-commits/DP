.class public final Lcom/bumptech/glide/util/Executors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DIRECT_EXECUTOR:Lcom/bumptech/glide/util/Executors$2;

.field public static final MAIN_THREAD_EXECUTOR:Lcom/bumptech/glide/util/Executors$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/util/Executors$1;

    invoke-direct {v0}, Lcom/bumptech/glide/util/Executors$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/Executors;->MAIN_THREAD_EXECUTOR:Lcom/bumptech/glide/util/Executors$1;

    new-instance v0, Lcom/bumptech/glide/util/Executors$2;

    invoke-direct {v0}, Lcom/bumptech/glide/util/Executors$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/Executors;->DIRECT_EXECUTOR:Lcom/bumptech/glide/util/Executors$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
