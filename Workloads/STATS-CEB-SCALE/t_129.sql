SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount>=0
AND p.CommentCount<=14
AND pl.LinkTypeId=1
AND u.Reputation>=1
AND u.Reputation<=491
AND u.DownVotes>=0
AND u.DownVotes<=0
AND c.CreationDate>=24
AND c.CreationDate<=1542
AND ph.CreationDate>=45

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;