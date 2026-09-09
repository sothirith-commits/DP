.class public final Lcom/deepalhome/launcher/shortcuts/ShortcutsView$shortcutsChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$shortcutsChangedListener$1;->this$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$shortcutsChangedListener$1;->this$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    invoke-static {v0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->access$refreshShortcuts(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsView$shortcutsChangedListener$1;->this$0:Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->access$getFolderAdapter$p(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;)Lcom/deepalhome/launcher/shortcuts/ShortcutsFolderViewAdapter;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getRecentShortcuts()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
