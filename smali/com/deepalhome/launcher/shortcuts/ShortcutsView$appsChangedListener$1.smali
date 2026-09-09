.class public final Lcom/deepalhome/launcher/shortcuts/ShortcutsView$appsChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$appsChangedListener$1;->this$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$appsChangedListener$1;->this$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->access$getFolderAdapter$p(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)Lcom/deepalhome/launcher/shortcuts/ShortcutsFolderViewAdapter;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getRecentShortcuts()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
