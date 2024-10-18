SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score>=-1
AND p.CommentCount>=0
AND p.CommentCount<=23
AND u.DownVotes=0
AND u.UpVotes>=0
AND u.UpVotes<=244

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;