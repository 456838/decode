.class public Lcom/xiaomi/passport/ui/b;
.super Lcom/xiaomi/passport/ui/l;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mUserId:Ljava/lang/String;

.field private oE:Lcom/xiaomi/passport/data/f;

.field private oF:Landroid/widget/Button;

.field private oG:Landroid/widget/Button;

.field private oH:Landroid/widget/Button;

.field private oI:Lcom/xiaomi/passport/ui/d;

.field private oJ:Ljava/lang/String;

.field private oK:Landroid/view/View;

.field private oL:Landroid/widget/TextView;

.field private oM:Landroid/widget/TextView;

.field private oN:Ljava/lang/String;

.field private oO:Landroid/os/CountDownTimer;

.field private oP:Lcom/xiaomi/passport/ui/c;

.field private oQ:Landroid/view/View;

.field private oR:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;-><init>()V

    return-void
.end method

.method private sD()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private sE(J)V
    .locals 7

    new-instance v0, Lcom/xiaomi/passport/ui/H;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/ui/H;-><init>(Lcom/xiaomi/passport/ui/b;JJ)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/H;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oO:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic sF(Lcom/xiaomi/passport/ui/b;)Lcom/xiaomi/passport/data/f;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oE:Lcom/xiaomi/passport/data/f;

    return-object v0
.end method

.method static synthetic sG(Lcom/xiaomi/passport/ui/b;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oG:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic sH(Lcom/xiaomi/passport/ui/b;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oH:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic sI(Lcom/xiaomi/passport/ui/b;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oM:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic sJ(Lcom/xiaomi/passport/ui/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic sK(Lcom/xiaomi/passport/ui/b;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/b;->sE(J)V

    return-void
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AccountUnactivatedFragm"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const-wide/16 v6, 0x7530

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/l;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/xiaomi/passport/data/e;->yX()Lcom/xiaomi/passport/data/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oE:Lcom/xiaomi/passport/data/f;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oE:Lcom/xiaomi/passport/data/f;

    if-nez v0, :cond_0

    const-string/jumbo v0, "AccountUnactivatedFragm"

    const-string/jumbo v1, "no account contains"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/b;->sD()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oE:Lcom/xiaomi/passport/data/f;

    invoke-virtual {v0}, Lcom/xiaomi/passport/data/f;->zb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/b;->oE:Lcom/xiaomi/passport/data/f;

    invoke-virtual {v1}, Lcom/xiaomi/passport/data/f;->zc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/b;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/b;->oE:Lcom/xiaomi/passport/data/f;

    invoke-virtual {v1}, Lcom/xiaomi/passport/data/f;->zd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/b;->oJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/b;->oE:Lcom/xiaomi/passport/data/f;

    invoke-virtual {v1}, Lcom/xiaomi/passport/data/f;->ze()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/b;->oN:Ljava/lang/String;

    const-string/jumbo v1, "reg_email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/passport/ui/b;->oJ:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oQ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oL:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/b;->oJ:Ljava/lang/String;

    aput-object v2, v1, v8

    const v2, 0x7f0c0039

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/passport/ui/b;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oE:Lcom/xiaomi/passport/data/f;

    invoke-virtual {v0}, Lcom/xiaomi/passport/data/f;->zf()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-string/jumbo v2, "AccountUnactivatedFragm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time left:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v6, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/b;->oG:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    sub-long v0, v6, v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/passport/ui/b;->sE(J)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "reg_sms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oK:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oG:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oH:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "AccountUnactivatedFragm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown reg type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/b;->sD()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oF:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/b;->oJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/b;->oJ:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/passport/utils/r;->EA(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oR:Landroid/widget/Button;

    if-ne v0, p1, :cond_2

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    const v1, 0x7f0c004e

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    const v1, 0x7f0c003f

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/G;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/G;-><init>(Lcom/xiaomi/passport/ui/b;)V

    const v2, 0x7f0c0040

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v4}, Lcom/xiaomi/passport/ui/C;->xD(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/b;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oG:Landroid/widget/Button;

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oE:Lcom/xiaomi/passport/data/f;

    invoke-virtual {v0}, Lcom/xiaomi/passport/data/f;->zc()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/b;->oJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/b;->oP:Lcom/xiaomi/passport/ui/c;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/b;->oP:Lcom/xiaomi/passport/ui/c;

    invoke-virtual {v3}, Lcom/xiaomi/passport/ui/c;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    if-ne v2, v3, :cond_0

    :cond_3
    new-instance v2, Lcom/xiaomi/passport/ui/c;

    invoke-direct {v2, p0, v0, v1, v4}, Lcom/xiaomi/passport/ui/c;-><init>(Lcom/xiaomi/passport/ui/b;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/ui/c;)V

    iput-object v2, p0, Lcom/xiaomi/passport/ui/b;->oP:Lcom/xiaomi/passport/ui/c;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oP:Lcom/xiaomi/passport/ui/c;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oH:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oI:Lcom/xiaomi/passport/ui/d;

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/b;->oI:Lcom/xiaomi/passport/ui/d;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    :cond_5
    new-instance v0, Lcom/xiaomi/passport/ui/d;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/b;->oJ:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v4}, Lcom/xiaomi/passport/ui/d;-><init>(Lcom/xiaomi/passport/ui/b;Ljava/lang/String;Lcom/xiaomi/passport/ui/d;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oI:Lcom/xiaomi/passport/ui/d;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oI:Lcom/xiaomi/passport/ui/d;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/b;->px:Z

    if-eqz v0, :cond_1

    const v0, 0x7f030025

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oG:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oG:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100042

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oH:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oH:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100045

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oF:Landroid/widget/Button;

    const v0, 0x7f100047

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oM:Landroid/widget/TextView;

    const v0, 0x7f100043

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oK:Landroid/view/View;

    const v0, 0x7f100048

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oQ:Landroid/view/View;

    const v0, 0x7f100044

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oL:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/b;->px:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oF:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/b;->oR:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_1
    const v0, 0x7f030014

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onDestroyView()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oO:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oO:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/xiaomi/passport/ui/b;->oO:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oP:Lcom/xiaomi/passport/ui/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oP:Lcom/xiaomi/passport/ui/c;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/c;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/b;->oP:Lcom/xiaomi/passport/ui/c;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oI:Lcom/xiaomi/passport/ui/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/b;->oI:Lcom/xiaomi/passport/ui/d;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/d;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/b;->oI:Lcom/xiaomi/passport/ui/d;

    :cond_2
    return-void
.end method
