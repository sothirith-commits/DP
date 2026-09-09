.class public final Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# static fields
.field public static final FACTORY:Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->FACTORY:Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0

    sget-object p0, Lcom/bumptech/glide/load/model/UnitModelLoader;->INSTANCE:Lcom/bumptech/glide/load/model/UnitModelLoader;

    return-object p0
.end method
