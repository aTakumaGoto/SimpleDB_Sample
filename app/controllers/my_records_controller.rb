class MyRecordsController < ApplicationController
  # GET /my_records
  # GET /my_records.xml
  def index
    @my_records = MyRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @my_records }
    end
  end

  # GET /my_records/1
  # GET /my_records/1.xml
  def show
    @my_record = MyRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @my_record }
    end
  end

  # GET /my_records/new
  # GET /my_records/new.xml
  def new
    @my_record = MyRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @my_record }
    end
  end

  # GET /my_records/1/edit
  def edit
    @my_record = MyRecord.find(params[:id])
  end

  # POST /my_records
  # POST /my_records.xml
  def create
    @my_record = MyRecord.new(params[:my_record])

    respond_to do |format|
      if @my_record.save
        format.html { redirect_to(@my_record, :notice => 'My record was successfully created.') }
        format.xml  { render :xml => @my_record, :status => :created, :location => @my_record }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @my_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /my_records/1
  # PUT /my_records/1.xml
  def update
    @my_record = MyRecord.find(params[:id])

    respond_to do |format|
      if @my_record.update_attributes(params[:my_record])
        format.html { redirect_to(@my_record, :notice => 'My record was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @my_record.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /my_records/1
  # DELETE /my_records/1.xml
  def destroy
    @my_record = MyRecord.find(params[:id])
    @my_record.delete

    respond_to do |format|
      format.html { redirect_to(my_records_url) }
      format.xml  { head :ok }
    end
  end
end
