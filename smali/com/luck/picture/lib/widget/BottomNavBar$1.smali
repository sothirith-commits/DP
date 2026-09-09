.class public final Lcom/luck/picture/lib/widget/BottomNavBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/luck/picture/lib/widget/BottomNavBar;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/widget/BottomNavBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/BottomNavBar$1;->this$0:Lcom/luck/picture/lib/widget/BottomNavBar;

    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;->onCheckOriginalChange()V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;->onFirstCheckOriginalSelectedChange()V

    :cond_0
    return-void
.end method
