.class public final Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$12;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$12;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$12;

    invoke-direct {v0}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$12;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$12;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$12;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    const-string p0, "it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
