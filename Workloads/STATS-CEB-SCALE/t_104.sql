SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score=0
AND u.Views<=433
AND u.DownVotes>=0
AND c.CreationDate>=27
AND c.CreationDate<=1542
AND u.CreationDate<=1543

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;