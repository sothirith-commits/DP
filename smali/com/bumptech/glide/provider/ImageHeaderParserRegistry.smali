.class public final Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final parsers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;->parsers:Ljava/util/ArrayList;

    return-void
.end method
