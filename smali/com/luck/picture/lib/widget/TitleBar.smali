.class public Lcom/luck/picture/lib/widget/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final config:Lcom/luck/picture/lib/config/SelectorConfig;

.field public final ivArrow:Landroid/widget/ImageView;

.field public final ivDelete:Landroid/widget/ImageView;

.field public final ivLeftBack:Landroid/widget/ImageView;

.field public final rlAlbumBg:Landroid/widget/RelativeLayout;

.field public final titleBarLayout:Landroid/widget/RelativeLayout;

.field public final titleBarLine:Landroid/view/View;

.field public titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

.field public final viewAlbumClickArea:Landroid/view/View;

.field public final viewTopStatusBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e00e3

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    const p1, 0x7f0b05f9

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->viewTopStatusBar:Landroid/view/View;

    const p1, 0x7f0b04c5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0b0483

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivLeftBack:Landroid/widget/ImageView;

    const p1, 0x7f0b0484

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->rlAlbumBg:Landroid/widget/RelativeLayout;

    const p1, 0x7f0b0482

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivDelete:Landroid/widget/ImageView;

    const p1, 0x7f0b0485

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->viewAlbumClickArea:Landroid/view/View;

    const p1, 0x7f0b048e

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/widget/MarqueeTextView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    const p1, 0x7f0b0481

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivArrow:Landroid/widget/ImageView;

    const p1, 0x7f0b0486

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    const p1, 0x7f0b05e9

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLine:Landroid/view/View;

    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivLeftBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->rlAlbumBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->viewAlbumClickArea:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060369

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13039c

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1303a1

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getImageArrow()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getImageDelete()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivDelete:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getTitleBarLine()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLine:Landroid/view/View;

    return-object p0
.end method

.method public getTitleCancelView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0483

    if-eq p1, v0, :cond_3

    const v0, 0x7f0b0486

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0b0484

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b0485

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f0b04c5

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;->onTitleDoubleClick()V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;->onShowAlbumPopWindow(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;->onBackPressed()V

    :cond_4
    :goto_2
    return-void
.end method

.method public setOnTitleBarListener(Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleBarStyle()V
    .locals 3

    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->viewTopStatusBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/luck/picture/lib/style/TitleBarStyle;

    invoke-direct {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;-><init>()V

    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lcom/luck/picture/lib/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLine:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivDelete:Landroid/widget/ImageView;

    const v0, 0x7f080220

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
