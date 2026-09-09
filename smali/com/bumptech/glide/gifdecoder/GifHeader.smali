.class public final Lcom/bumptech/glide/gifdecoder/GifHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bgColor:I

.field public bgIndex:I

.field public currentFrame:Lcom/bumptech/glide/gifdecoder/GifFrame;

.field public frameCount:I

.field public final frames:Ljava/util/ArrayList;

.field public gct:[I

.field public gctFlag:Z

.field public gctSize:I

.field public height:I

.field public status:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->status:I

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/ArrayList;

    return-void
.end method
