.class public final Lcom/deepalhome/launcher/util/AppUtil$bindAppIcon$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $imageView:Landroid/widget/ImageView;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $tagKey:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/AppUtil$bindAppIcon$1;->$imageView:Landroid/widget/ImageView;

    const p1, 0x7f0b0584

    iput p1, p0, Lcom/deepalhome/launcher/util/AppUtil$bindAppIcon$1;->$tagKey:I

    iput-object p2, p0, Lcom/deepalhome/launcher/util/AppUtil$bindAppIcon$1;->$packageName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/AppUtil$bindAppIcon$1;->$imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/deepalhome/launcher/util/AppUtil$bindAppIcon$1;->$tagKey:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/util/AppUtil$bindAppIcon$1;->$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/util/AppUtil$bindAppIcon$1;->$imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
