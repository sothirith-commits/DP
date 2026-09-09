.class public final Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final checkBox:Landroid/widget/CheckBox;

.field public final iconIv:Landroid/widget/ImageView;

.field public final nameTv:Landroid/widget/TextView;

.field public final sizeTv:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b02e6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    const p1, 0x7f0b03e6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    const p1, 0x7f0b051f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->sizeTv:Landroid/widget/TextView;

    const p1, 0x7f0b00fd

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-void
.end method
