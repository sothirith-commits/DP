.class public final Lcom/bumptech/glide/GlideContext;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final DEFAULT_TRANSITION_OPTIONS:Lcom/bumptech/glide/GenericTransitionOptions;


# instance fields
.field public final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

.field public final defaultRequestListeners:Ljava/util/List;

.field public defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field public final defaultRequestOptionsFactory:Lcom/bumptech/glide/GlideBuilder$1;

.field public final defaultTransitionOptions:Ljava/util/Map;

.field public final engine:Lcom/bumptech/glide/load/engine/Engine;

.field public final experiments:Landroidx/core/view/MenuHostHelper;

.field public final imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field public final logLevel:I

.field public final registry:Lcom/bumptech/glide/util/GlideSuppliers$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/GenericTransitionOptions;-><init>()V

    sput-object v0, Lcom/bumptech/glide/GlideContext;->DEFAULT_TRANSITION_OPTIONS:Lcom/bumptech/glide/GenericTransitionOptions;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;Lcom/umeng/analytics/filter/d;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/GlideBuilder$1;Landroidx/collection/ArrayMap;Ljava/util/List;Lcom/bumptech/glide/load/engine/Engine;Landroidx/core/view/MenuHostHelper;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bumptech/glide/GlideContext;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    iput-object p4, p0, Lcom/bumptech/glide/GlideContext;->imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    iput-object p5, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptionsFactory:Lcom/bumptech/glide/GlideBuilder$1;

    iput-object p7, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestListeners:Ljava/util/List;

    iput-object p6, p0, Lcom/bumptech/glide/GlideContext;->defaultTransitionOptions:Ljava/util/Map;

    iput-object p8, p0, Lcom/bumptech/glide/GlideContext;->engine:Lcom/bumptech/glide/load/engine/Engine;

    iput-object p9, p0, Lcom/bumptech/glide/GlideContext;->experiments:Landroidx/core/view/MenuHostHelper;

    iput p10, p0, Lcom/bumptech/glide/GlideContext;->logLevel:I

    new-instance p1, Lcom/bumptech/glide/util/GlideSuppliers$1;

    invoke-direct {p1, p3}, Lcom/bumptech/glide/util/GlideSuppliers$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bumptech/glide/GlideContext;->registry:Lcom/bumptech/glide/util/GlideSuppliers$1;

    return-void
.end method


# virtual methods
.method public final getRegistry()Lcom/bumptech/glide/Registry;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/GlideContext;->registry:Lcom/bumptech/glide/util/GlideSuppliers$1;

    invoke-virtual {p0}, Lcom/bumptech/glide/util/GlideSuppliers$1;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/Registry;

    return-object p0
.end method
