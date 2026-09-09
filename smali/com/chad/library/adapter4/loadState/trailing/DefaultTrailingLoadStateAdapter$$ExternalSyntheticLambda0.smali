.class public final synthetic Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;I)V
    .locals 0

    iput p2, p0, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;

    const-string v0, "this$0"

    iget p0, p0, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->invokeLoadMore()V

    return-void

    :pswitch_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/chad/library/adapter4/loadState/LoadState$Loading;->INSTANCE:Lcom/chad/library/adapter4/loadState/LoadState$Loading;

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->setLoadState(Lcom/chad/library/adapter4/loadState/LoadState;)V

    iget-object p0, p1, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->onTrailingListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    if-eqz p0, :cond_0

    sget p1, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->loadData(Z)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
