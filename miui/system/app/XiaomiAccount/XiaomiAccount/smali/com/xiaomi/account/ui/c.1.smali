.class public Lcom/xiaomi/account/ui/c;
.super Lcom/xiaomi/account/ui/x;
.source ""


# instance fields
.field private k:Lmiui/app/DatePickerDialog$OnDateSetListener;

.field private l:Lcom/xiaomi/account/ui/ImageValuePreference;

.field private m:Lcom/xiaomi/account/ui/AccountValuePreference;

.field private n:Lcom/xiaomi/account/ui/AccountValuePreference;

.field private o:Lcom/xiaomi/account/ui/AccountValuePreference;

.field private p:Lcom/xiaomi/account/ui/AccountValuePreference;

.field private q:Lcom/xiaomi/account/ui/AccountValuePreference;

.field private r:Lcom/xiaomi/account/ui/AccountValuePreference;

.field private s:Lmiui/preference/ValuePreference;

.field private t:Lcom/xiaomi/account/task/q;

.field private u:Lcom/xiaomi/account/ui/e;

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/account/task/v;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/xiaomi/account/data/UploadProfileType;",
            "Lcom/xiaomi/account/task/y;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/graphics/Bitmap;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/x;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->v:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/account/ui/W;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/W;-><init>(Lcom/xiaomi/account/ui/c;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->k:Lmiui/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method private A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "UserDetailInfoFragment"

    const-string/jumbo v1, "invalid params"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->q:Lcom/xiaomi/account/ui/AccountValuePreference;

    const v1, 0x7f0c00ef

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dd(I)V

    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/account/task/r;

    invoke-direct {v0}, Lcom/xiaomi/account/task/r;-><init>()V

    new-instance v1, Lcom/xiaomi/account/ui/af;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/account/ui/af;-><init>(Lcom/xiaomi/account/ui/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/r;->kD(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/r;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/ag;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/ag;-><init>(Lcom/xiaomi/account/ui/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/r;->kE(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/r;->build()Lcom/xiaomi/account/task/q;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->t:Lcom/xiaomi/account/task/q;

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->t:Lcom/xiaomi/account/task/q;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UserDetailInfoFragment"

    const-string/jumbo v1, "empty area iso"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->s:Lmiui/preference/ValuePreference;

    const v1, 0x7f0c00ef

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dv(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v1

    const-string/jumbo v0, "pref_account_user_other_info"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->q:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->s:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->s:Lmiui/preference/ValuePreference;

    iget-object v1, v1, Lcom/xiaomi/passport/utils/k;->zW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->q:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/account/task/w;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/task/w;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/xiaomi/account/ui/ad;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/account/ui/ad;-><init>(Lcom/xiaomi/account/ui/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/w;->kV(Lcom/xiaomi/account/task/x;)Lcom/xiaomi/account/task/w;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/ae;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/account/ui/ae;-><init>(Lcom/xiaomi/account/ui/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/w;->kW(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/w;->build()Lcom/xiaomi/account/task/v;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/v;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/c;->t(Lcom/xiaomi/account/task/v;)V

    return-void
.end method

.method private D(IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmiui/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private E()V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->m:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/AccountValuePreference;->de()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/xiaomi/account/utils/p;->om()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Lmiui/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->k:Lmiui/app/DatePickerDialog$OnDateSetListener;

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lmiui/app/DatePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lmiui/app/DatePickerDialog;->show()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserDetailInfoFragment"

    const-string/jumbo v2, "showUserBirthdayUpdateDialog"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private F()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00f3

    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/account/ui/c;->o:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v3}, Lcom/xiaomi/account/ui/AccountValuePreference;->de()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    new-instance v3, Lcom/xiaomi/account/ui/aj;

    invoke-direct {v3, p0}, Lcom/xiaomi/account/ui/aj;-><init>(Lcom/xiaomi/account/ui/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private G()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00f5

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->r:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v2}, Lcom/xiaomi/account/ui/AccountValuePreference;->de()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    new-instance v2, Lcom/xiaomi/account/ui/ah;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/account/ui/ah;-><init>(Lcom/xiaomi/account/ui/c;Landroid/widget/EditText;)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    new-instance v1, Lcom/xiaomi/account/ui/ai;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/ai;-><init>(Lcom/xiaomi/account/ui/c;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private H(I)V
    .locals 3

    new-instance v0, Lcom/xiaomi/account/task/w;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/task/w;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/xiaomi/account/ui/Y;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/ui/Y;-><init>(Lcom/xiaomi/account/ui/c;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/w;->kV(Lcom/xiaomi/account/task/x;)Lcom/xiaomi/account/task/w;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/Z;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/ui/Z;-><init>(Lcom/xiaomi/account/ui/c;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/w;->kW(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/w;->build()Lcom/xiaomi/account/task/v;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/v;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/c;->t(Lcom/xiaomi/account/task/v;)V

    return-void
.end method

.method private I(I)V
    .locals 3

    new-instance v0, Lcom/xiaomi/account/task/w;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/task/w;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/xiaomi/account/ui/ab;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/ui/ab;-><init>(Lcom/xiaomi/account/ui/c;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/w;->kV(Lcom/xiaomi/account/task/x;)Lcom/xiaomi/account/task/w;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/ac;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/ui/ac;-><init>(Lcom/xiaomi/account/ui/c;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/w;->kW(Ljava/lang/Runnable;)Lcom/xiaomi/account/task/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/w;->build()Lcom/xiaomi/account/task/v;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/v;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/c;->t(Lcom/xiaomi/account/task/v;)V

    return-void
.end method

.method private J(Lcom/xiaomi/account/data/UploadProfileType;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->w:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->w:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/task/y;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/y;->cancel(Z)Z

    :cond_2
    new-instance v5, Lcom/xiaomi/account/ui/d;

    invoke-direct {v5, p0, v2}, Lcom/xiaomi/account/ui/d;-><init>(Lcom/xiaomi/account/ui/c;Lcom/xiaomi/account/ui/d;)V

    new-instance v0, Lcom/xiaomi/account/task/y;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/task/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;Lcom/xiaomi/account/task/z;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/y;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->w:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private K()V
    .locals 3

    new-instance v0, Lcom/xiaomi/account/ui/X;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/X;-><init>(Lcom/xiaomi/account/ui/c;)V

    const v1, 0x7f0c0101

    const v2, 0x7f070002

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaomi/account/ui/c;->D(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private L()V
    .locals 3

    new-instance v0, Lcom/xiaomi/account/ui/aa;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/aa;-><init>(Lcom/xiaomi/account/ui/c;)V

    const v1, 0x7f0c0102

    const v2, 0x7f070003

    invoke-direct {p0, v1, v2, v0}, Lcom/xiaomi/account/ui/c;->D(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic M(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->m:Lcom/xiaomi/account/ui/AccountValuePreference;

    return-object v0
.end method

.method static synthetic N(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->n:Lcom/xiaomi/account/ui/AccountValuePreference;

    return-object v0
.end method

.method static synthetic O(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->o:Lcom/xiaomi/account/ui/AccountValuePreference;

    return-object v0
.end method

.method static synthetic P(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->p:Lcom/xiaomi/account/ui/AccountValuePreference;

    return-object v0
.end method

.method static synthetic Q(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->q:Lcom/xiaomi/account/ui/AccountValuePreference;

    return-object v0
.end method

.method static synthetic R(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->r:Lcom/xiaomi/account/ui/AccountValuePreference;

    return-object v0
.end method

.method static synthetic S(Lcom/xiaomi/account/ui/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic T(Lcom/xiaomi/account/ui/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/c;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic U(Lcom/xiaomi/account/ui/c;Ljava/util/Calendar;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/c;->y(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static synthetic V(Lcom/xiaomi/account/ui/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/c;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic W(Lcom/xiaomi/account/ui/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/c;->z()V

    return-void
.end method

.method static synthetic X(Lcom/xiaomi/account/ui/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/c;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y(Lcom/xiaomi/account/ui/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/c;->H(I)V

    return-void
.end method

.method static synthetic Z(Lcom/xiaomi/account/ui/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/c;->I(I)V

    return-void
.end method

.method static synthetic aa(Lcom/xiaomi/account/ui/c;Lcom/xiaomi/account/data/UploadProfileType;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/account/ui/c;->J(Lcom/xiaomi/account/data/UploadProfileType;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    return-void
.end method

.method private t(Lcom/xiaomi/account/task/v;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->w:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/UploadProfileType;

    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->w:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/task/y;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/y;->cancel(Z)Z

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private v()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/task/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/v;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/v;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private x(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "\\s+"

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0c00f6

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    const v0, 0x7f0c00f9

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_3

    const v0, 0x7f0c00fa

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0c00f7

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    const v0, 0x7f0c00f8

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private y(Ljava/util/Calendar;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0xd

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private z()V
    .locals 5

    const v4, 0x7f0c00ef

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_name"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f0c00f1

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->r:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v2, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    const-string/jumbo v1, "pref_account_userid"

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_gender"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, v4}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->o:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v2, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_birthday"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->m:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v2, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_avatar_file_name"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->x:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaomi/account/utils/p;->on(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/c;->x:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->x:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->l:Lcom/xiaomi/account/ui/ImageValuePreference;

    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/ImageValuePreference;->gA(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_education"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->Xl(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-result-object v2

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->n:Lcom/xiaomi/account/ui/AccountValuePreference;

    if-eqz v1, :cond_6

    invoke-virtual {p0, v4}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->n:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v2, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_income"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->Xk(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    move-result-object v2

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->p:Lcom/xiaomi/account/ui/AccountValuePreference;

    if-eqz v1, :cond_8

    invoke-virtual {p0, v4}, Lcom/xiaomi/account/ui/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    :cond_7
    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->p:Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {v2, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_region"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/account/ui/c;->B(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v3, "acc_user_location"

    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/account/ui/c;->A(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/accountsdk/account/data/Gender;->Pr:Lcom/xiaomi/accountsdk/account/data/Gender;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/Gender;->Vp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    :goto_1
    aget-object v1, v2, v1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/x;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const-string/jumbo v0, "acc_user_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->s:Lmiui/preference/ValuePreference;

    invoke-virtual {v0}, Lmiui/preference/ValuePreference;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/ui/c;->C(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/x;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "pref_account_username"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->r:Lcom/xiaomi/account/ui/AccountValuePreference;

    const-string/jumbo v0, "pref_account_avatar"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/ImageValuePreference;

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->l:Lcom/xiaomi/account/ui/ImageValuePreference;

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->l:Lcom/xiaomi/account/ui/ImageValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/ImageValuePreference;->gz(Z)V

    const-string/jumbo v0, "pref_account_user_gender"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->o:Lcom/xiaomi/account/ui/AccountValuePreference;

    const-string/jumbo v0, "pref_account_user_birthday"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->m:Lcom/xiaomi/account/ui/AccountValuePreference;

    const-string/jumbo v0, "pref_account_user_region"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->s:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_account_user_location"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->q:Lcom/xiaomi/account/ui/AccountValuePreference;

    const-string/jumbo v0, "pref_user_educational_qualification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->n:Lcom/xiaomi/account/ui/AccountValuePreference;

    const-string/jumbo v0, "pref_user_income"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/c;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->p:Lcom/xiaomi/account/ui/AccountValuePreference;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/c;->u()V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/c;->v()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/xiaomi/account/ui/c;->x:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->t:Lcom/xiaomi/account/task/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->t:Lcom/xiaomi/account/task/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/q;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/c;->t:Lcom/xiaomi/account/task/q;

    :cond_1
    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/c;->u:Lcom/xiaomi/account/ui/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->u:Lcom/xiaomi/account/ui/e;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/xiaomi/account/ui/c;->u:Lcom/xiaomi/account/ui/e;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_account_username"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "user_name"

    invoke-direct {p0}, Lcom/xiaomi/account/ui/c;->G()V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "user_detail_info"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/account/ui/x;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v2, "pref_account_user_gender"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "user_gender"

    invoke-direct {p0}, Lcom/xiaomi/account/ui/c;->F()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserDetailInfoFragment"

    const-string/jumbo v2, "activity not found"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0143

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    return v0

    :cond_3
    :try_start_1
    const-string/jumbo v2, "pref_account_user_birthday"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "user_birthday"

    invoke-direct {p0}, Lcom/xiaomi/account/ui/c;->E()V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "pref_account_avatar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v0, "user_avatar"

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/xiaomi/account/ui/UserAvatarUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/c;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "pref_account_user_location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v0, "update_user_location"

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/xiaomi/account/ui/SelectLocationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v4, "acc_user_region"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "acc_user_region"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/account/ui/c;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "pref_user_educational_qualification"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v0, "update_user_educational_qualification"

    invoke-direct {p0}, Lcom/xiaomi/account/ui/c;->K()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "pref_user_income"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "update_user_income"

    invoke-direct {p0}, Lcom/xiaomi/account/ui/c;->L()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->cS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/ui/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/ui/e;-><init>(Lcom/xiaomi/account/ui/c;Lcom/xiaomi/account/ui/e;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/c;->u:Lcom/xiaomi/account/ui/e;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/c;->u:Lcom/xiaomi/account/ui/e;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/account/ui/c;->z()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qr(Landroid/content/Context;)V

    return-void
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UserDetailInfoFragment"

    return-object v0
.end method
