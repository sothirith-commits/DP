.class public final synthetic Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public final synthetic f$4:Lcom/deepalhome/launcher/app/FunctionListAdapter;

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionListAdapter;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iput p3, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-object p5, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$4:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iput p6, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$5:I

    iput p7, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$6:I

    iput p8, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v6, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$6:I

    iget v7, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$7:I

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;

    iget v2, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object v4, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$4:Lcom/deepalhome/launcher/app/FunctionListAdapter;

    iget v5, p0, Lcom/deepalhome/launcher/app/FunctionListAdapter$$ExternalSyntheticLambda0;->f$5:I

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->$r8$lambda$N5RbeJ5U3SWSKK-A_L6fxS5BjKk(Landroid/view/View;Lcom/deepalhome/launcher/app/FunctionListAdapter$ViewHolder;ILcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionListAdapter;III)V

    return-void
.end method
