.class public final Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/view/BaseView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/view/BaseView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;->this$0:Lcom/deepalhome/launcher/view/BaseView;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method

.method private final onLoadCleared$com$deepalhome$launcher$music$LegacyMusicBar$updateCover$target$1(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method private final onLoadCleared$com$deepalhome$launcher$music$MusicBar$updateCover$target$1(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;->$r8$classId:I

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;->this$0:Lcom/deepalhome/launcher/view/BaseView;

    check-cast p0, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v1, v0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->setCornerRadius(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarLegacyBinding;->coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {p0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sput-object v1, Lcom/deepalhome/launcher/music/LegacyMusicBar;->lastCoverDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicBar$updateCover$target$1;->this$0:Lcom/deepalhome/launcher/view/BaseView;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicBar;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v1, v0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;->setCornerRadius(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {p0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicBar;->access$setLastCoverDrawable$cp(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
