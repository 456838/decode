.class public Lcom/xiaomi/passport/v2/ui/l;
.super Lcom/xiaomi/passport/ui/p;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/p;-><init>()V

    return-void
.end method

.method static synthetic Ku(Lcom/xiaomi/passport/v2/ui/l;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pH:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PasswordLoginFragment"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/l;->px:Z

    if-eqz v0, :cond_1

    const v0, 0x7f030033

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100034

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pV:Landroid/widget/TextView;

    const v0, 0x7f100036

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v0, 0x7f100082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v0, 0x7f100061

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pL:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/l;->px:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v2, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sA:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v2, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sB:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    :cond_0
    const v0, 0x7f100062

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pM:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pM:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pN:Landroid/view/View;

    const v0, 0x7f100084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pK:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pK:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/l;->qa:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/l;->uo(Z)V

    const v0, 0x7f10003a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10003b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pH:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/l;->pH:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100020

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v2, Lcom/xiaomi/passport/v2/utils/a;

    invoke-direct {v2}, Lcom/xiaomi/passport/v2/utils/a;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/l;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/passport/v2/ui/ao;

    invoke-direct {v4, p0}, Lcom/xiaomi/passport/v2/ui/ao;-><init>(Lcom/xiaomi/passport/v2/ui/l;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/xiaomi/passport/v2/utils/a;->Li(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v1

    :cond_1
    const v0, 0x7f03003f

    goto/16 :goto_0
.end method
