.class public final Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mNoIdLookup:Lcom/bumptech/glide/GlideBuilder$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/GlideBuilder$1;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(BI)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Lcom/bumptech/glide/GlideBuilder$1;

    return-void
.end method


# virtual methods
.method public final createStableIdLookup()Lcom/bumptech/glide/GlideBuilder$1;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Lcom/bumptech/glide/GlideBuilder$1;

    return-object p0
.end method
