.class public Lcom/xiaomi/account/ui/I;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cA:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field private cB:Landroid/widget/Button;

.field private cC:Lcom/xiaomi/account/ui/J;

.field private cD:Lcom/xiaomi/passport/utils/k;

.field private cE:Landroid/widget/TextView;

.field private cF:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/xiaomi/account/task/l;",
            ">;"
        }
    .end annotation
.end field

.field private cG:Ljava/lang/String;

.field private cH:Landroid/widget/EditText;

.field private cI:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final cJ:Landroid/text/TextWatcher;

.field private cK:Lcom/xiaomi/account/task/h;

.field private cx:Landroid/accounts/Account;

.field private cy:Landroid/widget/TextView;

.field private cz:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/xiaomi/account/ui/bw;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/bw;-><init>(Lcom/xiaomi/account/ui/I;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cJ:Landroid/text/TextWatcher;

    return-void
.end method

.method private eR(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cC:Lcom/xiaomi/account/ui/J;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/ui/J;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/account/ui/J;-><init>(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cC:Lcom/xiaomi/account/ui/J;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cC:Lcom/xiaomi/account/ui/J;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/ui/J;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private eS(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0116

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    const v1, 0x7f0c0118

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    new-instance v1, Lcom/xiaomi/account/ui/bx;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bx;-><init>(Lcom/xiaomi/account/ui/I;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const v1, 0x7f0c011a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private eT(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/Date;->setTime(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0117

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    const v2, 0x7f0c0119

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p4, v3, v0

    const/4 v0, 0x2

    aput-object p4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    new-instance v0, Lcom/xiaomi/account/ui/bA;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/account/ui/bA;-><init>(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private eU(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/a;->ajT(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/activate/a;->ajU(I)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "InputBindedPhoneFragmen"

    const-string/jumbo v1, "Null ActivateManagerFuture."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/xiaomi/accountsdk/activate/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    const-string/jumbo v0, "InputBindedPhoneFragmen"

    const-string/jumbo v1, "Null ActivateManagerFuture bundle."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const-string/jumbo v1, "sim_inserted"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "InputBindedPhoneFragmen"

    const-string/jumbo v1, "SIM not inserted"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const-string/jumbo v1, "activate_phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InputBindedPhoneFragmen"

    const-string/jumbo v2, "getActivatedPhoneNum"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v3

    :catch_1
    move-exception v0

    const-string/jumbo v1, "InputBindedPhoneFragmen"

    const-string/jumbo v2, "getActivatedPhoneNum"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "InputBindedPhoneFragmen"

    const-string/jumbo v2, "getActivatedPhoneNum"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private eV()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    const v1, 0x7f0c005c

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/ui/I;->cD:Lcom/xiaomi/passport/utils/k;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/account/ui/I;->cD:Lcom/xiaomi/passport/utils/k;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/utils/j;->Dx(Ljava/lang/String;Lcom/xiaomi/passport/utils/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    const v1, 0x7f0c005d

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/I;->cx:Landroid/accounts/Account;

    const-string/jumbo v3, "acc_user_phone_list"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    const v1, 0x7f0c0115

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_2
    return-object v0
.end method

.method private eW(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cF:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/task/j;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/bz;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/account/ui/bz;-><init>(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaomi/account/task/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/account/task/k;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cF:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cF:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private eX(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/passport/utils/j;->Dz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/I;->eY(Ljava/lang/String;)V

    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/xiaomi/passport/utils/k;->zX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private eY(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "InputBindedPhoneFragmen"

    const-string/jumbo v1, "region info is null, and set China as the default area iso"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "CN"

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cD:Lcom/xiaomi/passport/utils/k;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cy:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cy:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/account/ui/I;->cD:Lcom/xiaomi/passport/utils/k;

    iget-object v2, v2, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/I;->cD:Lcom/xiaomi/passport/utils/k;

    iget-object v2, v2, Lcom/xiaomi/passport/utils/k;->zX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private eZ(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cI:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/task/a;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/I;->cA:Lcom/xiaomi/accountsdk/account/data/BindingType;

    new-instance v3, Lcom/xiaomi/account/ui/by;

    invoke-direct {v3, p0}, Lcom/xiaomi/account/ui/by;-><init>(Lcom/xiaomi/account/ui/I;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/xiaomi/account/task/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;Lcom/xiaomi/account/task/b;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cI:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cI:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private fa(I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/I;->cB:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private fb()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/N;->gF(Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/account/ui/N;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcom/xiaomi/passport/utils/r;->Ez(Landroid/app/Activity;Landroid/app/Fragment;ZI)V

    return-void
.end method

.method private fc(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cK:Lcom/xiaomi/account/task/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "old_binded_phone_num"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/I;->cx:Landroid/accounts/Account;

    const-string/jumbo v2, "identity_auth_token"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/xiaomi/account/task/h;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/account/ui/I;->cG:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/ui/I;->cA:Lcom/xiaomi/accountsdk/account/data/BindingType;

    new-instance v7, Lcom/xiaomi/account/ui/bB;

    invoke-direct {v7, p0}, Lcom/xiaomi/account/ui/bB;-><init>(Lcom/xiaomi/account/ui/I;)V

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/account/task/h;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;Ljava/lang/String;Lcom/xiaomi/account/task/i;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cK:Lcom/xiaomi/account/task/h;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cK:Lcom/xiaomi/account/task/h;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private fd(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cE:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cE:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a003f

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/I;->fa(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cE:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0021

    goto :goto_0
.end method

.method static synthetic fe(Lcom/xiaomi/account/ui/I;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cE:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic ff(Lcom/xiaomi/account/ui/I;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic fg(Lcom/xiaomi/account/ui/I;Lcom/xiaomi/account/ui/J;)Lcom/xiaomi/account/ui/J;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/I;->cC:Lcom/xiaomi/account/ui/J;

    return-object p1
.end method

.method static synthetic fh(Lcom/xiaomi/account/ui/I;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/I;->cF:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic fi(Lcom/xiaomi/account/ui/I;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/I;->cI:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic fj(Lcom/xiaomi/account/ui/I;Lcom/xiaomi/account/task/h;)Lcom/xiaomi/account/task/h;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/I;->cK:Lcom/xiaomi/account/task/h;

    return-object p1
.end method

.method static synthetic fk(Lcom/xiaomi/account/ui/I;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/I;->eU(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic fl(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/I;->eR(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic fm(Lcom/xiaomi/account/ui/I;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/account/ui/I;->eT(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic fn(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/I;->eW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic fo(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/I;->eX(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic fp(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/I;->eY(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic fq(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/I;->eZ(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic fr(Lcom/xiaomi/account/ui/I;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/I;->fb()V

    return-void
.end method

.method static synthetic fs(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/I;->fc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ft(Lcom/xiaomi/account/ui/I;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/I;->fd(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const-string/jumbo v0, "country_iso"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/I;->eY(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cy:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_AREA_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/I;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cB:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/I;->eV()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cG:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/I;->eS(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "InputBindedPhoneFragmen"

    const-string/jumbo v1, "bundle is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string/jumbo v1, "update_binded_phone_or_email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cA:Lcom/xiaomi/accountsdk/account/data/BindingType;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f030008

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cy:Landroid/widget/TextView;

    const v0, 0x7f100019

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/xiaomi/account/ui/I;->cJ:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f100016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cE:Landroid/widget/TextView;

    const v0, 0x7f10001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cB:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cB:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dv(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "extra_binding_phone_num"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/xiaomi/account/ui/K;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/account/ui/K;-><init>(Lcom/xiaomi/account/ui/I;Lcom/xiaomi/account/ui/K;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cz:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cz:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/I;->eX(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cz:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cz:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/I;->cz:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cI:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cI:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/I;->cI:Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cF:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cF:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/I;->cF:Landroid/os/AsyncTask;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cK:Lcom/xiaomi/account/task/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cK:Lcom/xiaomi/account/task/h;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/h;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/I;->cK:Lcom/xiaomi/account/task/h;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cC:Lcom/xiaomi/account/ui/J;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cC:Lcom/xiaomi/account/ui/J;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/ui/J;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/I;->cC:Lcom/xiaomi/account/ui/J;

    :cond_4
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/I;->cx:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/account/ui/I;->cx:Landroid/accounts/Account;

    if-nez v0, :cond_0

    const-string/jumbo v0, "InputBindedPhoneFragmen"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/I;->cH:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method
