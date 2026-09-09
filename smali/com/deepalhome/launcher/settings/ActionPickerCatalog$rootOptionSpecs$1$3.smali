.class public final Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$3;

    invoke-direct {v0}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$3;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$3;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;-><init>(I)V

    return-object p0
.end method
