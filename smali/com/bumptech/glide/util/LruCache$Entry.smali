.class public final Lcom/bumptech/glide/util/LruCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final size:I

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/util/LruCache$Entry;->value:Ljava/lang/Object;

    iput p1, p0, Lcom/bumptech/glide/util/LruCache$Entry;->size:I

    return-void
.end method
