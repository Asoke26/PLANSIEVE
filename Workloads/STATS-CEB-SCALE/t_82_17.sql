SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 250
AND u.Reputation <= 2834
AND u.Views <= 52
AND u.DownVotes >= 37
AND u.CreationDate <= 67

AND c.UserId = u.Id
AND ph.UserId = u.Id;