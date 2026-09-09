.class public final Lcom/blankj/utilcode/util/ClickUtils$1;
.super Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;
.source "SourceFile"


# instance fields
.field public final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ClickUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final onDebouncingClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/ClickUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
