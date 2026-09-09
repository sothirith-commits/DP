.class public final synthetic Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$icon"

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->onIconLongClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/window/WindowsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/window/WindowView;

    invoke-static {v0, p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->$r8$lambda$eMnAbaMfBNhc-uZB8efT0ISW-9g(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowView;Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
