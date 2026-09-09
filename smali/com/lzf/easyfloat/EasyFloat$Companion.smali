.class public final Lcom/lzf/easyfloat/EasyFloat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/lzf/easyfloat/EasyFloat$Companion;-><init>()V

    return-void
.end method

.method public static isShow()Z
    .locals 1

    sget-object v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FloatingLyricsWindow"

    invoke-static {v0}, Lcom/lzf/easyfloat/core/FloatingWindowManager;->getHelper(Ljava/lang/String;)Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->isShow()Z

    move-result v0

    :goto_1
    return v0
.end method

.method public static updateFloat(IIII)V
    .locals 4

    sget-object v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FloatingLyricsWindow"

    invoke-static {v0}, Lcom/lzf/easyfloat/core/FloatingWindowManager;->getHelper(Ljava/lang/String;)Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    if-ne p1, v2, :cond_2

    if-ne p2, v2, :cond_2

    if-ne p3, v2, :cond_2

    new-instance p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const/16 p1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    if-eq p0, v2, :cond_3

    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3
    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_4
    if-eq p2, v2, :cond_5

    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_5
    if-eq p3, v2, :cond_6

    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_6
    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-void
.end method
