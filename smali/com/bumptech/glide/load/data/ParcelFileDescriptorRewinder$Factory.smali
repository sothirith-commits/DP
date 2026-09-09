.class public final Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;
    .locals 0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    new-instance p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/data/InputStreamRewinder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p0
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method
